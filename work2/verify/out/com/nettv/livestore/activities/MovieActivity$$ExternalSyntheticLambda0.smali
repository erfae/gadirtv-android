.class public final synthetic Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;II)V
    .registers 4

    iput p3, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_24

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/nettv/livestore/activities/MovieSecondActivity;->$r8$lambda$Acydj1clW61J852Fwl9V2Q1RYEA(Lcom/nettv/livestore/activities/MovieSecondActivity;ILandroid/content/DialogInterface;I)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/MovieInfoActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->$r8$lambda$NcpmXRAh3YcnEzga33Z9y4oEQe4(Lcom/nettv/livestore/activities/MovieInfoActivity;ILandroid/content/DialogInterface;I)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/MovieActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->$r8$lambda$BIcz99_C4Ttz14KLEr_TEsQG90w(Lcom/nettv/livestore/activities/MovieActivity;ILandroid/content/DialogInterface;I)V

    return-void

    :goto_24
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/SeasonActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/nettv/livestore/activities/SeasonActivity;->$r8$lambda$e_ELIqIUelhlUURTtWW997ByAhI(Lcom/nettv/livestore/activities/SeasonActivity;ILandroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
