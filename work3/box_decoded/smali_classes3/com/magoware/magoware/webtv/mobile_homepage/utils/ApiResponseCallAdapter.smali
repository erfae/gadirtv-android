.class public final Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;
.super Ljava/lang/Object;
.source "ApiResponseCallAdapter.kt"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Lretrofit2/Call<",
        "Lcom/magoware/magoware/webtv/api/ApiResponse<",
        "TR;>;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u00030\u0002B\'\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002\u00a2\u0006\u0002\u0010\u0008J\"\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u00032\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;",
        "R",
        "Lretrofit2/CallAdapter;",
        "Lretrofit2/Call;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "bodyType",
        "Ljava/lang/reflect/Type;",
        "delegate",
        "(Ljava/lang/reflect/Type;Lretrofit2/CallAdapter;)V",
        "adapt",
        "original",
        "responseType",
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
.field private final bodyType:Ljava/lang/reflect/Type;

.field private final delegate:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TR;",
            "Lretrofit2/Call<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lretrofit2/CallAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lretrofit2/CallAdapter<",
            "TR;",
            "Lretrofit2/Call<",
            "TR;>;>;)V"
        }
    .end annotation

    const-string v0, "bodyType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;->bodyType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;->delegate:Lretrofit2/CallAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Lretrofit2/Call<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "TR;>;>;"
        }
    .end annotation

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;->delegate:Lretrofit2/CallAdapter;

    invoke-interface {v1, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "delegate.adapt(original)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lretrofit2/Call;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCall;-><init>(Lretrofit2/Call;)V

    check-cast v0, Lretrofit2/Call;

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapter;->bodyType:Ljava/lang/reflect/Type;

    return-object v0
.end method
