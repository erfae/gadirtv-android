.class public final synthetic Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;->f$2:Landroid/content/Context;

    check-cast p1, [B

    invoke-static {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->lambda$downloadApk$1(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)V

    return-void
.end method
