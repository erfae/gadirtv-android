.class abstract Lcom/google/vr/sdk/widgets/video/deps/dj;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dj$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/vr/sdk/widgets/video/deps/dc;


# direct methods
.method protected constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dj;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation
.end method

.method public final b(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dj;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dj;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V

    :cond_0
    return-void
.end method
