.class final Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;
.super Ljava/lang/Object;
.source "MerlinBackwardsCompatibleLog.java"

# interfaces
.implements Lcom/novoda/merlin/Logger$LogHandle;


# static fields
.field private static lazyInstance:Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Merlin"

    .line 9
    iput-object v0, p0, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method static getInstance()Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;
    .locals 1

    .line 16
    sget-object v0, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->lazyInstance:Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    invoke-direct {v0}, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;-><init>()V

    sput-object v0, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->lazyInstance:Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    .line 19
    :cond_0
    sget-object v0, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->lazyInstance:Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Merlin"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Merlin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Merlin"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs e([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Merlin"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs i([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Merlin"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs v([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Merlin"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Merlin"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs w([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Merlin"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
