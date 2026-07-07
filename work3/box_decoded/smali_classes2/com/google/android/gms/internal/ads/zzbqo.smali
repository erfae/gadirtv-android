.class public final Lcom/google/android/gms/internal/ads/zzbqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbui;


# instance fields
.field private final zzaaa:Landroid/content/Context;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzfpa:Lcom/google/android/gms/internal/ads/zzclp;

.field private final zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdnn;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/zzclp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzaaa:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfpa:Lcom/google/android/gms/internal/ads/zzclp;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzdnj;)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatl;)V
    .locals 4

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcsr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzxv()Lcom/google/android/gms/internal/ads/zzayh;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzaaa:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayh;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfpa:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclp;->zzaqm()V

    return-void
.end method
