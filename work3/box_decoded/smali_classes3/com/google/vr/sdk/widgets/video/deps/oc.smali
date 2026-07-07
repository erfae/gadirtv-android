.class public final Lcom/google/vr/sdk/widgets/video/deps/oc;
.super Lcom/google/vr/sdk/widgets/video/deps/of$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/oo;

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/oc;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;IIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/of$a;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->b:Lcom/google/vr/sdk/widgets/video/deps/oo;

    .line 6
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->c:I

    .line 7
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->d:I

    .line 8
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->e:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/of$f;)Lcom/google/vr/sdk/widgets/video/deps/ob;
    .locals 8

    .line 10
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ob;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->c:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->d:I

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->e:Z

    const/4 v2, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ob;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/pg;IIZLcom/google/vr/sdk/widgets/video/deps/of$f;)V

    .line 11
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oc;->b:Lcom/google/vr/sdk/widgets/video/deps/oo;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {v7, p1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    :cond_0
    return-object v7
.end method

.method protected synthetic b(Lcom/google/vr/sdk/widgets/video/deps/of$f;)Lcom/google/vr/sdk/widgets/video/deps/of;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oc;->a(Lcom/google/vr/sdk/widgets/video/deps/of$f;)Lcom/google/vr/sdk/widgets/video/deps/ob;

    move-result-object p1

    return-object p1
.end method
