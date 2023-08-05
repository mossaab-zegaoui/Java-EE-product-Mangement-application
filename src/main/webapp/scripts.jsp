</div>
<!-- Container-fluid Ends-->

</div>
<!-- footer start-->
<%@include file="footer.jsp" %>
</div>

<script>
    const parentElement = document.querySelector("#card_items");
    parentElement.addEventListener('click', (e) => {
        const plusButton = e.target.classList.contains("bootstrap-touchspin-up");
        const minusButton = e.target.classList.contains("bootstrap-touchspin-down");
        var quantity = document.getElementById("quantity");
        console.log("target id = " + e.target.getAttribute("data-site"));
        for (let i = 0; i <${cart_products.size()}; i++) {
            if (${cart_products.get(i).id == e.target.dataset.id}) {
                if (plusButton)
                    console.log("");
                if (minusButton)
                    quantity.value -= 1;
            }
        }
    })
    ;

</script>
<script src="assets/js/jquery-3.5.1.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.bundle.min.js"></script>
<script src="assets/js/icons/feather-icon/feather.min.js"></script>
<script src="assets/js/icons/feather-icon/feather-icon.js"></script>
<script src="assets/js/scrollbar/simplebar.js"></script>
<script src="assets/js/scrollbar/custom.js"></script>
<script src="assets/js/config.js"></script>
<script src="assets/js/sidebar-menu.js"></script>
<script src="assets/js/touchspin/vendors.min.js"></script>
<script src="assets/js/touchspin/touchspin.js"></script>
<script src="assets/js/touchspin/input-groups.min.js"></script>
<script src="assets/js/script.js"></script>
<script src="assets/js/icons/feather-icon/feather.min.js"></script>
<script src="assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
<script src="assets/js/rating/jquery.barrating.js"></script>
<script src="assets/js/rating/rating-script.js"></script>
<script src="assets/js/owlcarousel/owl.carousel.js"></script>
<script src="assets/js/ecommerce.js"></script>
<script src="assets/js/product-list-custom.js"></script>
<script src="assets/js/tooltip-init.js"></script>
<script src="assets/js/counter/jquery.waypoints.min.js"></script>
<script src="assets/js/counter/jquery.counterup.min.js"></script>
<script src="assets/js/counter/counter-custom.js"></script>
<script src="assets/js/prism/prism.min.js"></script>
<script src="assets/js/clipboard/clipboard.min.js"></script>
</body>
</html>