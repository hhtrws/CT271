<?php
if (isset($message)) {
    foreach ($message as $message) {
        echo '
         <div class="message">
            <span>' . $message . '</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
         </div>
         ';
    }
}
?>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="index.php" class="logo">T&C<span>.</span></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shop.php">Shop</a>
                </li>
            </ul>
        </div>
        <ul id="main-menu">
            <li><a href="">Danh Mục Sản Phẩm</a>
                <ul class="sub-menu">
                    <li><a href="category.php?category=smartphone">Điện Thoại</a></li>
                    <li><a href="category.php?category=laptop">LapTop</a></li>
                    <li><a href="category.php?category=keyboard">Bàn Phím</a></li>
                    <li><a href="category.php?category=mouse">Chuột</a></li>
                    <li><a href="category.php?category=headphone">Tai Nghe</a></li>
                </ul>
            </li>
        </ul>
        <section class="flex">
            <div class="icons">
                <?php
                $count_cart_items = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
                $count_cart_items->execute([$user_id]);
                $total_cart_counts = $count_cart_items->rowCount();
                ?>
                <div id="menu-btn" class="fas fa-bars"></div>
                <a href="search_page.php"><i class="fas fa-search"></i></a>
                <a href="cart.php"><i class="fas fa-shopping-cart"></i><span>(<?= $total_cart_counts; ?>)</span></a>
                <div id="user-btn" class="fas fa-user"></div>
            </div>
            <div class="profile">
                <?php
                $select_profile = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
                $select_profile->execute([$user_id]);
                if ($select_profile->rowCount() > 0) {
                    $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
                ?>
                <p><?= $fetch_profile["name"]; ?></p>
                <div class="flex-btn">
                    <a href="user_register.php" class="option-btn">register</a>
                    <a href="user_login.php" class="option-btn">login</a>
                </div>
                <a href="components/user_logout.php" class="delete-btn"
                    onclick="return confirm('logout from the website?');">logout</a>
                <?php
                } else {
                ?>
                <div class="flex-btn">
                    <a href="user_register.php" class="option-btn">register</a>
                    <a href="user_login.php" class="option-btn">login</a>
                </div>
                <?php
                }
                ?>


            </div>
        </section>
    </nav>

</header>