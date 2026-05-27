// ============================================================
// SALUD VITAL - Farmacia Online (app.js)
// Conectado a la API REST: http://localhost:5000/api
// ============================================================

const API = 'http://localhost:5000/api';

// ── ESTADO GLOBAL ──
let activeCategory   = 'Todo';
let isAdmin          = false;
let adminInitialized = false;
let currentToken     = null;
let products         = [];

// ── UTILIDADES HTTP ──
function authHeaders(json = true) {
    const h = {};
    if (json) h['Content-Type'] = 'application/json';
    if (currentToken) h['Authorization'] = `Bearer ${currentToken}`;
    return h;
}

async function apiFetch(path, options = {}) {
    const res = await fetch(API + path, {
        ...options,
        headers: options.headers ?? authHeaders()
    });
    if (!res.ok) {
        const err = await res.json().catch(() => ({ message: res.statusText }));
        throw new Error(err.message || res.statusText);
    }
    return res.json();
}

function normalize(str) {
    return str.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');
}

function isDuplicateProductName(name, excludeId = null) {
    const normalizedName = normalize(name);
    return products.some(p => {
        if (excludeId !== null && p.id === excludeId) return false;
        return normalize(p.name) === normalizedName;
    });
}

function isStrongPassword(password) {
    const minLength = 8;
    const hasUpperCase = /[A-Z]/.test(password);
    const hasLowerCase = /