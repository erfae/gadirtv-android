.class public final Lcom/google/vr/sdk/widgets/video/deps/ne$a;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final b:I

.field private final c:[I

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/iw;

.field private final e:[I

.field private final f:[[[I

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/iw;


# direct methods
.method constructor <init>([I[Lcom/google/vr/sdk/widgets/video/deps/iw;[I[[[ILcom/google/vr/sdk/widgets/video/deps/iw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->f:[[[I

    .line 5
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->e:[I

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->g:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 7
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b:I

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b:I

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->d:[Lcom/google/vr/sdk/widgets/video/deps/iw;

    aget-object p1, v0, p1

    return-object p1
.end method
