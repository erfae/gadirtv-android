.class final Lcom/google/vr/sdk/widgets/video/deps/ia$e;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/ia;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ia;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/ia$e;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->b:I

    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(ILcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->b:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(I)Z

    move-result v0

    return v0
.end method

.method public b_(J)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ia;->a(IJ)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ia$e;->a:Lcom/google/vr/sdk/widgets/video/deps/ia;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ia;->h()V

    return-void
.end method
