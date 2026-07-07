.class public final Lcom/google/vr/sdk/widgets/video/deps/u;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/u;


# instance fields
.field public final b:F

.field public final c:F

.field public final d:Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/u;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/u;-><init>(F)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/u;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/u;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    .line 9
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->c:F

    .line 10
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->e:I

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->e:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 19
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->c:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/u;->d:Z

    add-int/2addr v1, v0

    return v1
.end method
