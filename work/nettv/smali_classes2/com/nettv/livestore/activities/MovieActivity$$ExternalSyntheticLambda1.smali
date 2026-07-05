.class public final synthetic Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

.field public static final synthetic INSTANCE$1:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

.field public static final synthetic INSTANCE$2:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

.field public static final synthetic INSTANCE$3:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE$1:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE$2:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->INSTANCE$3:Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieSecondActivity;->$r8$lambda$DaBSg1lLUHA3MUb6nePb5Gqc6jQ(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->$r8$lambda$URGfJqt_QTnfOWLImt33NgFEx-Q(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieActivity;->$r8$lambda$jzddsGnzMUC-_UF6lpIN6qFrOaI(Landroid/content/DialogInterface;I)V

    return-void

    :goto_0
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/SeasonActivity;->$r8$lambda$0sg1i8gevrvl3AVMOSlgdTOIi7g(Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
