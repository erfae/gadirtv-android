.class Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;
.super Ljava/lang/Object;
.source "SeriesMobilePlayer.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showEpisodesDlgFragment()V
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

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnEpisodeSelected(Lcom/nettv/livestore/models/EpisodeModel;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget-object p1, p1, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeDlgFragment:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget v0, p1, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    if-eq v0, p2, :cond_0

    .line 3
    iput p2, p1, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    iget p2, p1, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;I)V

    :cond_0
    return-void
.end method

.method public OnSeeAllEpisodes()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-virtual {v0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;->this$0:Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
