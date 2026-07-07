.class public Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;
.super Ljava/lang/Object;
.source "ApiResponseCallAdapter.kt"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0016\u00a2\u0006\u0002\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;",
        "Ljava/lang/reflect/ParameterizedType;",
        "myRawType",
        "Ljava/lang/reflect/Type;",
        "myTypeArgs",
        "",
        "(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V",
        "[Ljava/lang/reflect/Type;",
        "getActualTypeArguments",
        "()[Ljava/lang/reflect/Type;",
        "getOwnerType",
        "",
        "getRawType",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final myRawType:Ljava/lang/reflect/Type;

.field private final myTypeArgs:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "myRawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myTypeArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;->myRawType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;->myTypeArgs:[Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;->myTypeArgs:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;->getOwnerType()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/OneArgParameterizedType;->myRawType:Ljava/lang/reflect/Type;

    return-object v0
.end method
