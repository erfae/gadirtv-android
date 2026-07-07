.class public final Landroidx/paging/PageEvent$LoadStateUpdate;
.super Landroidx/paging/PageEvent;
.source "PageEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadStateUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageEvent$LoadStateUpdate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/PageEvent<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001b*\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001bB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\tH\u00c6\u0003J-\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/paging/PageEvent$LoadStateUpdate;",
        "T",
        "",
        "Landroidx/paging/PageEvent;",
        "loadType",
        "Landroidx/paging/LoadType;",
        "fromMediator",
        "",
        "loadState",
        "Landroidx/paging/LoadState;",
        "(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V",
        "getFromMediator",
        "()Z",
        "getLoadState",
        "()Landroidx/paging/LoadState;",
        "getLoadType",
        "()Landroidx/paging/LoadType;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/PageEvent$LoadStateUpdate$Companion;


# instance fields
.field private final fromMediator:Z

.field private final loadState:Landroidx/paging/LoadState;

.field private final loadType:Landroidx/paging/LoadType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PageEvent$LoadStateUpdate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PageEvent$LoadStateUpdate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/PageEvent$LoadStateUpdate;->Companion:Landroidx/paging/PageEvent$LoadStateUpdate$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Landroidx/paging/PageEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    iput-boolean p2, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    iput-object p3, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    .line 199
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 198
    instance-of p1, p3, Landroidx/paging/LoadState$NotLoading;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 204
    sget-object p1, Landroidx/paging/PageEvent$LoadStateUpdate;->Companion:Landroidx/paging/PageEvent$LoadStateUpdate$Companion;

    invoke-virtual {p1, p3, p2}, Landroidx/paging/PageEvent$LoadStateUpdate$Companion;->canDispatchWithoutInsert$paging_common(Landroidx/paging/LoadState;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LoadStateUpdates cannot be used to dispatch NotLoading unless it is from remote mediator and remote mediator reached end of pagination."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 197
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LoadStateUpdate for local REFRESH may not set endOfPaginationReached = true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static synthetic copy$default(Landroidx/paging/PageEvent$LoadStateUpdate;Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;ILjava/lang/Object;)Landroidx/paging/PageEvent$LoadStateUpdate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/PageEvent$LoadStateUpdate;->copy(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)Landroidx/paging/PageEvent$LoadStateUpdate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/paging/LoadType;
    .locals 1

    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    return v0
.end method

.method public final component3()Landroidx/paging/LoadState;
    .locals 1

    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final copy(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)Landroidx/paging/PageEvent$LoadStateUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Z",
            "Landroidx/paging/LoadState;",
            ")",
            "Landroidx/paging/PageEvent$LoadStateUpdate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-direct {v0, p1, p2, p3}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadType;ZLandroidx/paging/LoadState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    iget-object v1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    iget-boolean v1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    iget-object p1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getFromMediator()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    return v0
.end method

.method public final getLoadState()Landroidx/paging/LoadState;
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final getLoadType()Landroidx/paging/LoadType;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadStateUpdate(loadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadType:Landroidx/paging/LoadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromMediator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->fromMediator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PageEvent$LoadStateUpdate;->loadState:Landroidx/paging/LoadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
