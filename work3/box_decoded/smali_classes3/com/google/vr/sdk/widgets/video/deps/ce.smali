.class public final Lcom/google/vr/sdk/widgets/video/deps/ce;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/cf;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cc<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cc$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cc$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ce;->a:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/cc$a;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ce;->a:Lcom/google/vr/sdk/widgets/video/deps/cc$a;

    return-object v0
.end method

.method public g()Lcom/google/vr/sdk/widgets/video/deps/cf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
