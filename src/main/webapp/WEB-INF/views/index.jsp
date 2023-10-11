<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path0" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>해법학원</title>
    <jsp:include page="./include/head.jsp" />
</head>
<body>
<!-- Header Start -->
<jsp:include page="./include/header.jsp" />
<!-- Header Close -->


<section class="section" id="carousel-section">
    <div class="container">
        <div id="carousel-demo" class="carousel pb-6" style="overflow: hidden">
            <div class="item-1">
                <div class="columns">
                    <div class="column is-half">
                        <h2 class="title is-1">Welcome to Our Fruits Shop</h2>
                        <p>
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                        <br />

                        <div class="buttons is-left">
                            <button class="button is-medium is-orange button is-link is-light">
                                SHOP NOW
                            </button>
                            <button class="button is-medium is-black is-primary is-light">CONTACT US</button>
                        </div>
                    </div>
                    <div class="column is-half">
                        <figure class="image is is-covered">
                            <img src="images/slide-img.png" alt="" />
                        </figure>
                    </div>
                </div>
            </div>
            <div class="item-2">
                <div class="columns">
                    <div class="column is-half">
                        <h2 class="title is-1">Welcome to Our Fruits Shop</h2>
                        <p>
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                        <br />

                        <div class="buttons is-left">
                            <button class="button is-medium is-orange button is-link is-light">
                                SHOP NOW
                            </button>
                            <button class="button is-medium is-black is-primary is-light">CONTACT US</button>
                        </div>
                    </div>
                    <div class="column is-half">
                        <figure class="image is is-covered">
                            <img src="images/slide-img.png" alt="" />
                        </figure>
                    </div>
                </div>
                <!-- Slide Content -->
            </div>
            <div class="item-3">
                <!-- Slide Content -->
                <div class="columns">
                    <div class="column is-half">
                        <h2 class="title is-1">Welcome to Our Fruits Shop</h2>
                        <p>
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                        <br />

                        <div class="buttons is-left">
                            <button class="button is-medium is-orange button is-link is-light">
                                SHOP NOW
                            </button>
                            <button class="button is-medium is-black is-primary is-light">CONTACT US</button>
                        </div>
                    </div>
                    <div class="column is-half">
                        <figure class="image is is-covered">
                            <img src="images/slide-img.png" alt="" />
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Carousel -->
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="has-text-centered" id="services-text-container">
            <h1 class="title is-1">Our Services</h1>
            <h4 class="subtitle">
                There are many variations of passages of Lorem Ipsum available, but the majority have
            </h4>
        </div>
        <br />
        <div class="columns">
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <div class="has-text-centered">
                            <img src="images/card-item-1.png" />
                        </div>
                        <h3 class="title is-3 has-text-centered" id="card-product-description">Orange</h3>
                        <p class="has-text-centered">
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <div class="has-text-centered">
                            <img src="images/card-item-1.png" />
                        </div>
                        <h3 class="title is-3 has-text-centered" id="card-product-description">Orange</h3>
                        <p class="has-text-centered">
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <div class="has-text-centered">
                            <img src="images/card-item-1.png" />
                        </div>
                        <h3 class="title is-3 has-text-centered" id="card-product-description">Orange</h3>
                        <p class="has-text-centered">
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form, by injected humour, or randomised words
                            which don't look even slightly believable.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="buttons is-centered">
            <button class="button is-black is-medium is-link">Read More</button>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="has-text-centered pb-6">
            <h1 class="title is-1">Fresh Fruits</h1>
            <h3 class="subtitle">
                There are many variations of passages of Lorem Ipsum available, but the majority have
            </h3>
        </div>
        <div class="columns">
            <div
                    class="column is-three-quarters is-flex is-justify-content-center is-flex-direction-column"
            >
                <h3 class="title is-3">Best Fresh Orange</h3>
                <p class="hast-text-centered">
                    but the majority have suffered alteration in some form, by injected humour, or
                    randomised words which don't look even slightly believable. If you are going to use a
                    passage of Lorem Ipsum, you need to be
                </p>
                <br />
                <div class="buttons is-left">
                    <button class="button is-medium is-black is-light is-link">Buy Now</button>
                </div>
            </div>
            <div class="column">
                <figure class="image">
                    <img src="images/orange.png" />
                </figure>
            </div>
        </div>
        <div class="columns">
            <div
                    class="column is-three-quarters is-flex is-justify-content-center is-flex-direction-column"
            >
                <h3 class="title is-3">Best Fresh Grapes</h3>
                <p class="hast-text-centered">
                    but the majority have suffered alteration in some form, by injected humour, or
                    randomised words which don't look even slightly believable. If you are going to use a
                    passage of Lorem Ipsum, you need to be
                </p>
                <br />
                <div class="buttons is-left">
                    <button class="button is-medium is-black is-light is-link">Buy Now</button>
                </div>
            </div>
            <div class="column">
                <figure class="image">
                    <img src="images/gauva.png" />
                </figure>
            </div>
        </div>
        <div class="columns">
            <div
                    class="column is-three-quarters is-flex is-justify-content-center is-flex-direction-column"
            >
                <h3 class="title is-3">Best Fresh Grapes</h3>
                <p class="hast-text-centered">
                    but the majority have suffered alteration in some form, by injected humour, or
                    randomised words which don't look even slightly believable. If you are going to use a
                    passage of Lorem Ipsum, you need to be
                </p>
                <br />
                <div class="buttons is-left">
                    <button class="button is-medium is-black is-light is-link">Buy Now</button>
                </div>
            </div>
            <div class="column">
                <figure class="image">
                    <img src="images/orange.png" />
                </figure>
            </div>
        </div>
        <div class="columns">
            <div
                    class="column is-three-quarters is-flex is-justify-content-center is-flex-direction-column"
            >
                <h3 class="title is-3">Best Fresh Orange</h3>
                <p class="hast-text-centered">
                    but the majority have suffered alteration in some form, by injected humour, or
                    randomised words which don't look even slightly believable. If you are going to use a
                    passage of Lorem Ipsum, you need to be
                </p>
                <br />
                <div class="buttons is-left">
                    <button class="button is-medium is-black is-light is-link">Buy Now</button>
                </div>
            </div>
            <div class="column">
                <figure class="image">
                    <img src="images/gauva.png" />
                </figure>
            </div>
        </div>
        <div class="columns">
            <div
                    class="column is-three-quarters is-flex is-justify-content-center is-flex-direction-column"
            >
                <h3 class="title is-3">Best Fresh Grapes</h3>
                <p class="hast-text-centered">
                    but the majority have suffered alteration in some form, by injected humour, or
                    randomised words which don't look even slightly believable. If you are going to use a
                    passage of Lorem Ipsum, you need to be
                </p>
                <br />
                <div class="buttons is-left">
                    <button class="button is-medium is-black is-light is-link">Buy Now</button>
                </div>
            </div>
            <div class="column">
                <figure class="image">
                    <img src="images/gauva.png" />
                </figure>
            </div>
        </div>
    </div>
</section>

<section class="section" id="tasty-fruits-section">
    <h1 class="title is-1 is-white-text-title has-text-centered">VERY TASTY FRUITS</h1>
</section>

<section class="section">
    <div class="has-text-centered">
        <h1 class="title is-1">Testimonial</h1>
        <h4 class="subtitle">
            There are many variations of passages of Lorem Ipsum available, but the majority have
        </h4>
    </div>
    <div class="container">
        <div id="carousel-demo" class="carousel" style="overflow: hidden">
            <div class="container">
                <div class="has-text-centered">
                    <figure class="image is-256x256 container">
                        <img src="images/client.png" />
                    </figure>
                    <h3 class="title is-3">George Ipsum</h3>
                    <p class="">
                        There are many variations of passages of Lorem Ipsum available, but the majority
                        have suffered alteration in some form, by injected humour, or randomised words which
                        don't look even slightly believable. If you are going to use a passage of Lorem
                        Ipsum, you need to be sure
                    </p>
                </div>
            </div>
            <!-- end of first -->
            <div class="container">
                <div class="has-text-centered">
                    <figure class="image is-256x256 container">
                        <img src="images/client.png" />
                    </figure>
                    <h3 class="title is-3">George Ipsum</h3>
                    <p class="">
                        There are many variations of passages of Lorem Ipsum available, but the majority
                        have suffered alteration in some form, by injected humour, or randomised words which
                        don't look even slightly believable. If you are going to use a passage of Lorem
                        Ipsum, you need to be sure
                    </p>
                </div>
            </div>
            <!-- end of second -->
        </div>
    </div>
</section>

<section class="section" id="contact-section">
    <div class="container">
        <div class="columns">
            <div class="column is-half">
                <h2 class="title is-2">Contact Us</h2>
                <form>
                    <div class="field">
                        <input class="input is-custom-field" type="text" placeholder="Name" />
                    </div>
                    <div class="field">
                        <input class="input is-custom-field" type="text" placeholder="Phone Number" />
                    </div>
                    <div class="field">
                        <input class="input is-custom-field" type="text" placeholder="Email" />
                    </div>
                    <div class="field">
                        <div class="control">
                            <textarea class="textarea" placeholder="Message"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="column is-half"></div>
        </div>
    </div>
</section>

<section class="map-section">
    <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10499.966498430253!2d2.2944813!3d48.8583701!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8ddca9ee380ef7e0!2zz4DPjc-BzrPOv8-CIM-Ezr_PhSDOkc6Qz4bOtc67!5e0!3m2!1sel!2sgr!4v1609878476869!5m2!1sel!2sgr"
            id="map"
    ></iframe>
</section>

<section class="section">
    <div class="container">
        <div class="footer-main">
            <div class="columns">
                <div class="column">
                    <h4 class="title is-4">Fruits</h4>
                    <p class="">
                        randomised words which don't look even slightly believable. If you are going to use
                        a passage of Lorem Ipsum,
                    </p>
                </div>
                <div class="column">
                    <h4 class="title is-4">Services</h4>
                    <p class="">
                        randomised words which don't look even slightly believable. If you are going to use
                        a passage of Lorem Ipsum,
                    </p>
                </div>
                <div class="column">
                    <h4 class="title is-4">List</h4>
                    <p class="">
                        randomised words which don't look even slightly believable. If you are going to use
                        a passage of Lorem Ipsum,
                    </p>
                </div>

                <div class="column">
                    <h4 class="title is-4">Follow Us</h4>

                    <div class="buttons">
                        <a class="button is-medium is-facebook is-inverted is-black-social">
                  <span class="icon">
                    <i class="fab fa-facebook fa-lg"></i>
                  </span>
                        </a>
                        <a class="button is-medium is-instagram is-inverted is-black-social">
                  <span class="icon">
                    <i class="fab fa-instagram fa-lg"></i>
                  </span>
                        </a>
                        <a class="button is-medium is-twitter is-inverted is-black-social">
                  <span class="icon">
                    <i class="fab fa-twitter fa-lg"></i>
                  </span>
                        </a>
                        <a class="button is-medium is-youtube is-inverted is-black-social">
                  <span class="icon">
                    <i class="fab fa-youtube fa-lg"></i>
                  </span>
                        </a>
                    </div>
                    <h4 class="title is-4">Subscribe Now</h4>
                    <div class="field">
                        <input class="input" type="text" placeholder="Email" />
                    </div>
                    <div class="buttons">
                        <button class="button is-left is-medium is-orange">Subscribe</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- Footer Start -->
<jsp:include page="./include/footer.jsp" />
<!-- Footer Close -->
</body>
</html>

<script>
    bulmaCarousel.attach('#carousel-demo', {
        initialSlide: 0,
        slidesToScroll: 1,
        slidesToShow: 1,
    });
</script>