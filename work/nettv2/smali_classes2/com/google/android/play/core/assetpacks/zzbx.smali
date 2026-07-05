.class final Lcom/google/android/play/core/assetpacks/zzbx;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private zza:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbx;->zza:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final zzb(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbx;->zza:Landroid/app/PendingIntent;

    return-void
.end method
