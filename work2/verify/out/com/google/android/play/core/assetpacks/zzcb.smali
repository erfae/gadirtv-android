.class public final Lcom/google/android/play/core/assetpacks/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private zza:Lcom/google/android/play/core/assetpacks/zzp;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzca;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/assetpacks/zza;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcb;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    const-class v1, Lcom/google/android/play/core/assetpacks/zzp;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/zzcr;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzcd;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzcb;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/zzcd;-><init>(Lcom/google/android/play/core/assetpacks/zzp;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/play/core/assetpacks/zzp;)Lcom/google/android/play/core/assetpacks/zzcb;
    .registers 2

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcb;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    return-object p0
.end method
