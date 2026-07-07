.class public final Lcom/google/vr/sdk/widgets/video/deps/aj;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/aj$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/aj;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field private e:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aj$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aj$a;->a()Lcom/google/vr/sdk/widgets/video/deps/aj;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/aj;->a:Lcom/google/vr/sdk/widgets/video/deps/aj;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->c:I

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/google/vr/sdk/widgets/video/deps/aj$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/aj;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()Landroid/media/AudioAttributes;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->e:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->c:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->e:Landroid/media/AudioAttributes;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->e:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/aj;

    .line 18
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/aj;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

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

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->b:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aj;->d:I

    add-int/2addr v1, v0

    return v1
.end method
