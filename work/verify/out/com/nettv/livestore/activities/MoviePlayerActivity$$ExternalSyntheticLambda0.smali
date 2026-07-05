.class public final synthetic Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment$ItemPositionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Ljava/util/List;I)V
    .registers 5

    iput p4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemPosition(I)V
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->$r8$lambda$GT2ng5XlCv82DANfFswU9wMmLKU(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Ljava/util/List;I)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->$r8$lambda$HrzQlOuVppQsg-TqEEb0atXoqWc(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/util/List;Ljava/util/List;I)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
