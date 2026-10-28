<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>FinTrack - Shop</title>

    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Instrument+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <!-- NAVBAR -->
    <jsp:include page="navbar.jsp" />

    <!-- SHOP HEADER -->
    <div class="trx-header">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center flex-wrap gap-3">
                <div>
                    <p class="mb-1 text-light-teal">Find your favorite e-money card.</p>
                    <h2 class="fw-bold mb-0">E-Money Shop</h2>
                </div>

                <div class="d-flex align-items-center gap-3">
                    <button class="btn-eye-trx shop-cart-btn" id="cartButton" title="Cart">
                        <i class="bi bi-cart3"></i>
                        <span class="shop-cart-badge" id="cartBadge">0</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- MAIN CONTENT -->
    <div class="container trx-overlap-container mb-5">

        <!-- SEARCH + FILTER -->
        <div class="trx-table-card mb-4">
            <div class="trx-filter-bar">
                <div class="trx-search-wrap">
                    <i class="bi bi-search trx-search-icon"></i>
                    <input type="text" class="trx-search-input shop-search-input" id="shopSearch"
                        placeholder="Search e-money card or bank...">
                </div>

                <div class="trx-filter-tabs flex-wrap" id="bankFilter">
                    <button class="trx-filter-tab active" data-bank="all">All</button>
                    <button class="trx-filter-tab" data-bank="mandiri">Bank Mandiri</button>
                    <button class="trx-filter-tab" data-bank="bni">BNI</button>
                    <button class="trx-filter-tab" data-bank="bri">BRI</button>
                    <button class="trx-filter-tab" data-bank="bca">BCA</button>
                    <button class="trx-filter-tab" data-bank="other">Other Banks</button>
                </div>
            </div>
        </div>

        <!-- PRODUCT GRID -->
        <div class="row g-4" id="productGrid">

            <!-- MANDIRI -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="mandiri" data-name="mandiri e-money" data-bank-name="bank mandiri">
                <div class="card fintrack-card shop-card" data-id="1">
                    <div class="shop-card-image shop-bg-mandiri">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">e-money</span>
                            <span class="shop-emoney-bank">mandiri</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">Mandiri e-money</h6>
                        <p class="shop-product-bank">Bank Mandiri</p>
                        <p class="shop-product-price">Rp50.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=1"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BNI -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="bni" data-name="bni tapcash" data-bank-name="bni">
                <div class="card fintrack-card shop-card" data-id="2">
                    <div class="shop-card-image shop-bg-bni">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">TapCash</span>
                            <span class="shop-emoney-bank">BNI</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">BNI TapCash</h6>
                        <p class="shop-product-bank">BNI</p>
                        <p class="shop-product-price">Rp50.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=2"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BRI -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="bri" data-name="bri brizzi" data-bank-name="bri">
                <div class="card fintrack-card shop-card" data-id="3">
                    <div class="shop-card-image shop-bg-bri">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">BRIZZI</span>
                            <span class="shop-emoney-bank">BRI</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">BRI BRIZZI</h6>
                        <p class="shop-product-bank">BRI</p>
                        <p class="shop-product-price">Rp50.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=3"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BCA -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="bca" data-name="bca flazz" data-bank-name="bca">
                <div class="card fintrack-card shop-card" data-id="4">
                    <div class="shop-card-image shop-bg-bca">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">Flazz</span>
                            <span class="shop-emoney-bank">BCA</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">BCA Flazz</h6>
                        <p class="shop-product-bank">BCA</p>
                        <p class="shop-product-price">Rp50.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=4"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- OTHER: BTN -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="other" data-name="btn jelita" data-bank-name="bank tabungan negara btn">
                <div class="card fintrack-card shop-card" data-id="5">
                    <div class="shop-card-image shop-bg-other">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">Jelita</span>
                            <span class="shop-emoney-bank">BTN</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">BTN Jelita</h6>
                        <p class="shop-product-bank">Bank BTN</p>
                        <p class="shop-product-price">Rp40.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=5"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- OTHER: DKI -->
            <div class="col-12 col-sm-6 col-lg-4 col-xl-3 product-col"
                data-bank="other" data-name="jakcard" data-bank-name="bank dki">
                <div class="card fintrack-card shop-card" data-id="6">
                    <div class="shop-card-image shop-bg-other">
                        <button class="shop-fav-btn" type="button" aria-label="Favorite">
                            <i class="bi bi-heart"></i>
                        </button>
                        <div class="shop-emoney-card">
                            <i class="bi bi-cpu shop-emoney-chip"></i>
                            <span class="shop-emoney-brand">JakCard</span>
                            <span class="shop-emoney-bank">Bank DKI</span>
                        </div>
                    </div>
                    <div class="shop-card-body">
                        <h6 class="shop-product-name">JakCard</h6>
                        <p class="shop-product-bank">Bank DKI</p>
                        <p class="shop-product-price">Rp40.000</p>
                        <div class="shop-actions">
                            <a href="${pageContext.request.contextPath}/shop/detail?id=6"
                                class="btn-trx-submit shop-buy-btn text-decoration-none">Buy Now</a>
                            <button type="button" class="shop-cart-add" title="Add to cart">
                                <i class="bi bi-cart-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- EMPTY STATE -->
        <div class="trx-table-card mt-4" id="shopEmpty" style="display:none;">
            <div class="trx-empty" style="display:flex;">
                <i class="bi bi-inbox"></i>
                <p>No e-money cards found</p>
            </div>
        </div>

    </div>

    <!-- TOAST -->
    <div class="toast-container position-fixed bottom-0 end-0 p-3" style="z-index: 9999;">
        <div id="shopToast" class="toast align-items-center text-bg-success border-0" role="alert">
            <div class="d-flex">
                <div class="toast-body">
                    <i class="bi bi-check-circle-fill me-2"></i>
                    <span id="shopToastText">Added to cart.</span>
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // ===== helpers (localStorage wrapped so the page still works if blocked) =====
        function readStore(key, fallback) {
            try { return JSON.parse(localStorage.getItem(key)) || fallback; }
            catch (e) { return fallback; }
        }
        function writeStore(key, value) {
            try { localStorage.setItem(key, JSON.stringify(value)); } catch (e) { }
        }

        let cart = readStore('fintrackCart', []);
        let favorites = readStore('fintrackFavorites', []);

        const cartBadge = document.getElementById('cartBadge');
        const toastEl = document.getElementById('shopToast');

        function showToast(message) {
            document.getElementById('shopToastText').textContent = message;
            bootstrap.Toast.getOrCreateInstance(toastEl, { delay: 2000 }).show();
        }

        function updateBadge() {
            const total = cart.reduce((sum, item) => sum + item.qty, 0);
            cartBadge.textContent = total;
            cartBadge.style.display = total > 0 ? 'flex' : 'none';
        }

        // ===== favorites =====
        document.querySelectorAll('.shop-card').forEach(card => {
            const id = card.dataset.id;
            const favBtn = card.querySelector('.shop-fav-btn');
            const icon = favBtn.querySelector('i');

            function paint() {
                const active = favorites.includes(id);
                favBtn.classList.toggle('active', active);
                icon.className = active ? 'bi bi-heart-fill' : 'bi bi-heart';
            }
            paint();

            favBtn.addEventListener('click', function () {
                if (favorites.includes(id)) {
                    favorites = favorites.filter(f => f !== id);
                } else {
                    favorites.push(id);
                }
                writeStore('fintrackFavorites', favorites);
                paint();
            });

            // ===== add to cart =====
            card.querySelector('.shop-cart-add').addEventListener('click', function () {
                const existing = cart.find(item => item.id === id);
                if (existing) {
                    existing.qty += 1;
                } else {
                    cart.push({ id: id, qty: 1 });
                }
                writeStore('fintrackCart', cart);
                updateBadge();
                showToast(card.querySelector('.shop-product-name').textContent + ' added to cart.');
            });
        });

        // ===== search + filter =====
        let currentBank = 'all';
        const searchInput = document.getElementById('shopSearch');

        function applyShopFilters() {
            const q = searchInput.value.trim().toLowerCase();
            let visible = 0;

            document.querySelectorAll('.product-col').forEach(col => {
                const matchBank = currentBank === 'all' || col.dataset.bank === currentBank;
                const matchSearch = col.dataset.name.includes(q) || col.dataset.bankName.includes(q);
                const show = matchBank && matchSearch;
                col.style.display = show ? '' : 'none';
                if (show) visible++;
            });

            document.getElementById('shopEmpty').style.display = visible === 0 ? 'block' : 'none';
        }

        searchInput.addEventListener('input', applyShopFilters);

        document.querySelectorAll('#bankFilter .trx-filter-tab').forEach(tab => {
            tab.addEventListener('click', function () {
                document.querySelectorAll('#bankFilter .trx-filter-tab').forEach(t => t.classList.remove('active'));
                this.classList.add('active');
                currentBank = this.dataset.bank;
                applyShopFilters();
            });
        });

        updateBadge();
    </script>

</body>

</html>