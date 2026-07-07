.class public final Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;
.super Ljava/lang/Object;
.source "ErrorHandling.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/data/ErrorHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0008\u001a\u0002H\u0005\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;",
        "",
        "()V",
        "error",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "T",
        "message",
        "",
        "data",
        "(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "success",
        "(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;-><init>()V

    return-void
.end method

.method public static synthetic error$default(Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/data/ErrorHandling$Companion;->error(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    sget-object v1, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->ERROR:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    invoke-direct {v0, v1, p2, p1}, Lcom/magoware/magoware/webtv/data/ErrorHandling;-><init>(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final success(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/ErrorHandling;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/magoware/magoware/webtv/data/ErrorHandling;

    sget-object v1, Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/data/ErrorHandling;-><init>(Lcom/magoware/magoware/webtv/data/ErrorHandling$Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
