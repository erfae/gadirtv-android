.class public Lcom/google/vr/sdk/widgets/video/deps/pi;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/pi$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/vr/sdk/widgets/video/deps/pi$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/vr/sdk/widgets/video/deps/pi$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/pi$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Lcom/google/vr/sdk/widgets/video/deps/pi$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/pj;->a:Ljava/util/Comparator;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/pi;->a:Ljava/util/Comparator;

    .line 48
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/pk;->a:Ljava/util/Comparator;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/pi;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->c:I

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->e:[Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->f:I

    return-void
.end method

.method static final synthetic a(Lcom/google/vr/sdk/widgets/video/deps/pi$a;Lcom/google/vr/sdk/widgets/video/deps/pi$a;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->c:F

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 3

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/pi;->a:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 39
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->f:I

    :cond_0
    return-void
.end method

.method static final synthetic b(Lcom/google/vr/sdk/widgets/video/deps/pi$a;Lcom/google/vr/sdk/widgets/video/deps/pi$a;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->a:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->a:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private b()V
    .locals 2

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->f:I

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/pi;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->f:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/pi;->b()V

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    .line 32
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 34
    iget p1, v2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->c:F

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->c:F

    :goto_1
    return p1
.end method

.method public a(IF)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/pi;->a()V

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->i:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->e:[Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->i:I

    aget-object v0, v1, v0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pi$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pi$1;)V

    .line 10
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->g:I

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->a:I

    .line 11
    iput p1, v0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    .line 12
    iput p2, v0, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->c:F

    .line 13
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    .line 15
    :cond_1
    :goto_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->c:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    .line 17
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    .line 18
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    if-gt v1, p1, :cond_2

    .line 19
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->i:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->e:[Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->i:I

    aput-object p2, v0, p1

    goto :goto_1

    .line 23
    :cond_2
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    sub-int/2addr v0, p1

    iput v0, p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;->b:I

    .line 24
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/pi;->h:I

    goto :goto_1

    :cond_3
    return-void
.end method
