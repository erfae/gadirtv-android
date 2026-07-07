.class public final Lcom/magoware/magoware/webtv/data/Resource$Companion;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/data/Resource;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\tJ!\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u000bJ!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/data/Resource$Companion;",
        "",
        "()V",
        "error",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "T",
        "msg",
        "",
        "data",
        "(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;",
        "loading",
        "(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;",
        "success",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/data/Resource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/data/Resource;

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->ERROR:Lcom/magoware/magoware/webtv/data/Status;

    invoke-direct {v0, v1, p2, p1}, Lcom/magoware/magoware/webtv/data/Resource;-><init>(Lcom/magoware/magoware/webtv/data/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final loading(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/magoware/magoware/webtv/data/Resource;

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->LOADING:Lcom/magoware/magoware/webtv/data/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/data/Resource;-><init>(Lcom/magoware/magoware/webtv/data/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final success(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/magoware/magoware/webtv/data/Resource;

    sget-object v1, Lcom/magoware/magoware/webtv/data/Status;->SUCCESS:Lcom/magoware/magoware/webtv/data/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/data/Resource;-><init>(Lcom/magoware/magoware/webtv/data/Status;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
