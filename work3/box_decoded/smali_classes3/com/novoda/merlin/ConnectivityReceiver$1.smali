.class Lcom/novoda/merlin/ConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "ConnectivityReceiver.java"

# interfaces
.implements Lcom/novoda/merlin/ConnectivityReceiver$MerlinsBeardCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novoda/merlin/ConnectivityReceiver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/merlin/ConnectivityReceiver;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/ConnectivityReceiver;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityReceiver$1;->this$0:Lcom/novoda/merlin/ConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMerlinsBeard(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;
    .locals 0

    .line 17
    invoke-static {p1}, Lcom/novoda/merlin/MerlinsBeard;->from(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;

    move-result-object p1

    return-object p1
.end method
