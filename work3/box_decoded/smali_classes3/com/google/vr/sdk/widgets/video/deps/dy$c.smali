.class final Lcom/google/vr/sdk/widgets/video/deps/dy$c;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:[Lcom/google/vr/sdk/widgets/video/deps/ej;

.field public b:Lcom/google/vr/sdk/widgets/video/deps/l;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/ej;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->a:[Lcom/google/vr/sdk/widgets/video/deps/ej;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->d:I

    return-void
.end method
