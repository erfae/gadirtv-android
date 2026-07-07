.class public final Lcom/google/vr/sdk/widgets/video/deps/oa;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nr$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/oo;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/nr$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->b:Lcom/google/vr/sdk/widgets/video/deps/oo;

    .line 8
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->c:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/oa;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oc;

    invoke-direct {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/oc;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/oa;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/oa;->b()Lcom/google/vr/sdk/widgets/video/deps/nz;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/nz;
    .locals 3

    .line 10
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nz;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->c:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    .line 11
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/nr$a;->a()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nz;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 12
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oa;->b:Lcom/google/vr/sdk/widgets/video/deps/oo;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    :cond_0
    return-object v0
.end method
