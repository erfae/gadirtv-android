.class Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;
.super Ljava/lang/Object;
.source "SeriesMobilePlayer.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showPlayErrorDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget v1, v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;I)V

    :cond_0
    return-void
.end method

.method public onOkClick()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
