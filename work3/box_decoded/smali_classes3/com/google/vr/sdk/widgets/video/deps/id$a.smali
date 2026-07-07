.class public final Lcom/google/vr/sdk/widgets/video/deps/id$a;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/od;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/od;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    const/high16 p1, 0x100000

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/id;
    .locals 10

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->g:Z

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cu;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cp;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cp;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cu;

    .line 9
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/id;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cu;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->c:Ljava/lang/String;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->f:I

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/id$a;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/id;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/nr$a;Lcom/google/vr/sdk/widgets/video/deps/cu;Lcom/google/vr/sdk/widgets/video/deps/oi;Ljava/lang/String;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/id$1;)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)Lcom/google/vr/sdk/widgets/video/deps/id;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/id$a;->a(Landroid/net/Uri;)Lcom/google/vr/sdk/widgets/video/deps/id;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/id;->a(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ig;)V

    :cond_0
    return-object p1
.end method
