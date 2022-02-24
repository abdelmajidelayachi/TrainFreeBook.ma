<?php include(VIEWS . 'inc/header.php'); ?>

<div class="container p-5" >
    <div class="row my-4">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center p-1">Inscription</h4>
                </div>
                <div class="card-body bg-light">
                    <form method="post" action="<?php url('passenger/register'); ?>" class="mr-1" >
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="First name" name="fist-name" require>
                        </div>
                        <div class="form-group mt-3">
                            <input class="form-control" type="text" placeholder="Second name" name="last-name" require>
                        </div>
                        <div class="form-group mt-3">
                            <input class="form-control" type="email" placeholder="Email" name="email" require>
                        </div>
                        <div class="form-group mt-3">
                            <input class="form-control" type="password" placeholder="Enter password" name="pass" require>
                        </div>
                        <div class="form-group mt-3">
                            <input class="form-control" type="password" placeholder="Confirm password" name="confirm-pass" require>
                        </div>
                        <button name="submit" class="btn btn-sm btn-primary mt-4">Inscription</button>
                    </form>
                </div>
                <div class="card-footer">
                    <a href="<?= 'login' ?>" class="btn btn-link">Conexion</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include(VIEWS . 'inc/footer.php'); ?>