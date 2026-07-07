.class final Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1$1;
.super Ljava/lang/Object;
.source "NetworkBoundResource.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TResultType;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "ResultType",
        "RequestType",
        "newData",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/api/NetworkBoundResource$1;->this$0:Lcom/magoware/magoware/webtv/api/NetworkBoundResource;

    sget-object v1, Lcom/magoware/magoware/webtv/data/Resource;->Companion:Lcom/magoware/magoware/webtv/data/Resource$Companion;

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/data/Resource$Companion;->success(Ljava/lang/Object;)Lcom/magoware/magoware/webtv/data/Resource;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;->access$setValue(Lcom/magoware/magoware/webtv/api/NetworkBoundResource;Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method
