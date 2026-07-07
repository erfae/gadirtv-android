.class public Lcom/google/android/gms/internal/ads/zzbgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbgl$zza;
    }
.end annotation


# instance fields
.field private final zzaaa:Landroid/content/Context;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzeva:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgl$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgl$zza;->zza(Lcom/google/android/gms/internal/ads/zzbgl$zza;)Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgl$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbgl$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzaaa:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgl$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgl$zza;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzeva:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgl$zza;Lcom/google/android/gms/internal/ads/zzbgn;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Lcom/google/android/gms/internal/ads/zzbgl$zza;)V

    return-void
.end method


# virtual methods
.method final zzaef()Landroid/content/Context;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzaaa:Landroid/content/Context;

    return-object v0
.end method

.method final zzaeg()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzeva:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final zzaeh()Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    return-object v0
.end method

.method final zzaei()Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzaaa:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzm;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaej()Lcom/google/android/gms/internal/ads/zzef;
    .locals 4

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzaaa:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgl;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;-><init>(Lcom/google/android/gms/internal/ads/zzdv;)V

    return-object v0
.end method
