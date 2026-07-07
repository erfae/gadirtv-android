.class public final synthetic Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$rRZ3UYPG-KZnoKDkRGJfSYsh4PA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$rRZ3UYPG-KZnoKDkRGJfSYsh4PA;->f$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$rRZ3UYPG-KZnoKDkRGJfSYsh4PA;->f$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->lambda$updateVmxId$0$ExoPlayerActivity(Lcom/google/gson/JsonObject;)V

    return-void
.end method
