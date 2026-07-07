.class public final Lcom/novoda/merlin/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/Logger$LogHandle;
    }
.end annotation


# static fields
.field private static final HANDLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/novoda/merlin/Logger$LogHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Lcom/novoda/merlin/Logger$LogHandle;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 86
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 88
    invoke-interface {v1, p0, p1}, Lcom/novoda/merlin/Logger$LogHandle;->d(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 73
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 75
    invoke-interface {v1, p0}, Lcom/novoda/merlin/Logger$LogHandle;->d([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static detach(Lcom/novoda/merlin/Logger$LogHandle;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static detachAll()V
    .locals 1

    .line 40
    sget-object v0, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 136
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 137
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 138
    invoke-interface {v1, p0, p1}, Lcom/novoda/merlin/Logger$LogHandle;->e(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 123
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 125
    invoke-interface {v1, p0}, Lcom/novoda/merlin/Logger$LogHandle;->e([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs i([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 61
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 63
    invoke-interface {v1, p0}, Lcom/novoda/merlin/Logger$LogHandle;->i([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs v([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 49
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 51
    invoke-interface {v1, p0}, Lcom/novoda/merlin/Logger$LogHandle;->v([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 111
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 112
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 113
    invoke-interface {v1, p0, p1}, Lcom/novoda/merlin/Logger$LogHandle;->w(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs w([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 98
    :goto_0
    sget-object v1, Lcom/novoda/merlin/Logger;->HANDLES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novoda/merlin/Logger$LogHandle;

    .line 100
    invoke-interface {v1, p0}, Lcom/novoda/merlin/Logger$LogHandle;->w([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
