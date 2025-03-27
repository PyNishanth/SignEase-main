<?php
include "partials/header.php";
if(!isset($_SESSION['user_is_admin'])){
    header("location: " . ROOT_URL . "logout.php");
    //destroy all sessions and redirect user to login page
    session_destroy();
}
//get back form data if invalid
$title = $_SESSION["add-category-data"]['title'] ?? null;

unset($_SESSION['add-category-data'])
?>

<section class="form_section">

    <div class="container form_section-container">
        <h2>Add Category</h2>
        <?php if(isset($_SESSION['add-category'])): ?>
        <div class="alert_message error">
            <p><?=$_SESSION['add-category'];
            unset($_SESSION['add-category']);
            ?></p>
        </div>
        <?php endif?>
        <form action="<?= ROOT_URL ?>admin/add-category-logic.php" method="POST">
            <input type="text" name="title"        value = "<?=$title?>"placeholder="Title">
            

            <button type="submit" name="submit" class="btn">Add Category</button>
        </form>
    </div>


    

</section>

<?php
include "../partials/footer.php";
?>
