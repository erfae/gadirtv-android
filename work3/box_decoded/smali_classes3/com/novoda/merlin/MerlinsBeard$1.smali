.class Lcom/novoda/merlin/MerlinsBeard$1;
.super Ljava/lang/Object;
.source "MerlinsBeard.java"

# interfaces
.implements Lcom/novoda/merlin/EndpointPinger$PingerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/merlin/MerlinsBeard;->hasInternetAccess(Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/merlin/MerlinsBeard;

.field final synthetic val$callback:Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/MerlinsBeard;Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/novoda/merlin/MerlinsBeard$1;->this$0:Lcom/novoda/merlin/MerlinsBeard;

    iput-object p2, p0, Lcom/novoda/merlin/MerlinsBeard$1;->val$callback:Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard$1;->val$callback:Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;->onResult(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/novoda/merlin/MerlinsBeard$1;->val$callback:Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/novoda/merlin/MerlinsBeard$InternetAccessCallback;->onResult(Z)V

    return-void
.end method
