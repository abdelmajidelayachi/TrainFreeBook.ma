<?php include(VIEWS . 'inc/header.php'); ?>

<div class="container p-5" style="height:550px">
    <div class="row my-4">
        <div class="col-md-6 mx-auto ">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center p-1">Conexion</h3>
                </div>
                <div class="card-body bg-light">
                    <form method="post" class="mr-1">
                        <div class="form-group">
                            <input class="form-control" type="email" placeholder="Email" name="email" require>
                        </div>
                        <div class="form-group">
                            <input class="form-control mt-2" type="password" placeholder="Mot de passe" name="pass" require>
                        </div>
                        <button name="submit" class="btn btn-sm btn-primary mt-4 px-2">Connexion</button>
                    </form>
                </div>
                <div class="card-footer">
                    <a href="<?= 'index' ?>" class="btn btn-link">Inscription</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include(VIEWS . 'inc/footer.php'); ?>