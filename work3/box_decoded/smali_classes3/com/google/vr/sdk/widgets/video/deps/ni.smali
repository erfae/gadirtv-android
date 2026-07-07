.class public abstract Lcom/google/vr/sdk/widgets/video/deps/ni;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ni$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/ni$a;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/nn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iw;)Lcom/google/vr/sdk/widgets/video/deps/nj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation
.end method

.method protected final a()Lcom/google/vr/sdk/widgets/video/deps/nn;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ni;->b:Lcom/google/vr/sdk/widgets/video/deps/nn;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nn;

    return-object v0
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/ni$a;Lcom/google/vr/sdk/widgets/video/deps/nn;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ni;->a:Lcom/google/vr/sdk/widgets/video/deps/ni$a;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ni;->b:Lcom/google/vr/sdk/widgets/video/deps/nn;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method
