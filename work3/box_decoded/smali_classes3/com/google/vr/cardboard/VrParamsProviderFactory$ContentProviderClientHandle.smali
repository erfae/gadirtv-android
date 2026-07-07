.class public Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/VrParamsProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderClientHandle"
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;

.field public final client:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    .line 3
    iput-object p2, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method
