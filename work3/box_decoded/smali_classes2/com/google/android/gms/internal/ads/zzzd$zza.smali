.class final Lcom/google/android/gms/internal/ads/zzzd$zza;
.super Lcom/google/android/gms/internal/ads/zzajf;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzckn:Lcom/google/android/gms/internal/ads/zzzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd$zza;->zzckn:Lcom/google/android/gms/internal/ads/zzzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajf;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzzh;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzzd;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaiz;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd$zza;->zzckn:Lcom/google/android/gms/internal/ads/zzzd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/internal/ads/zzzd;Z)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd$zza;->zzckn:Lcom/google/android/gms/internal/ads/zzzd;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzzd;->zzb(Lcom/google/android/gms/internal/ads/zzzd;Z)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd$zza;->zzckn:Lcom/google/android/gms/internal/ads/zzzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/internal/ads/zzzd;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzd;->zzrb()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/internal/ads/zzzd;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 6
    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzd;->zzrb()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzd;->zza(Lcom/google/android/gms/internal/ads/zzzd;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
