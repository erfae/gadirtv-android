.class public final Lcom/google/vr/sdk/widgets/video/deps/nd;
.super Lcom/google/vr/sdk/widgets/video/deps/nb;
.source "FixedTrackSelection.java"


# instance fields
.field private final d:I

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/iv;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nb;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[I)V

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/nd;->d:I

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/nd;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(JJJ)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nd;->d:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nd;->e:Ljava/lang/Object;

    return-object v0
.end method
