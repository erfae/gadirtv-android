.class public final Lcom/google/vr/sdk/widgets/video/deps/kl;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ko;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kl;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kl;->a:Lcom/google/vr/sdk/widgets/video/deps/nr$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/nr$a;->a()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object p1

    return-object p1
.end method
