.class public final Lcom/magoware/magoware/webtv/data/ErrorHandling;
.super Ljava/lang/Object;
.source "ErrorHandling.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;,
        Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u001b*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0002\u001b\u001cB!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J6\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "T",
        "",
        "status",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;",
        "data",
        "message",
        "",
        "(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getMessage",
        "()Ljava/lang/String;",
        "getStatus",
        "()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "Status",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->Companion:Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/data/ErrorHandling;Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/data/ErrorHandling;->copy(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    invoke-direct {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/data/ErrorHandling;-><init>(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

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

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

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

    const-string v1, "ErrorHandling(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->status:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/data/ErrorHandling;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
