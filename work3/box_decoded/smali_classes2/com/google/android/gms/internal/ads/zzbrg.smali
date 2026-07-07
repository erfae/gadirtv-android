.class public Lcom/google/android/gms/internal/ads/zzbrg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbrg$zza;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

.field private zzfxi:Landroid/os/Bundle;

.field private final zzfxj:Ljava/lang/String;

.field private final zzfxk:Lcom/google/android/gms/internal/ads/zzdni;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrg$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzbrg$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->context:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbrg$zza;)Lcom/google/android/gms/internal/ads/zzdnn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbrg$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxi:Landroid/os/Bundle;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbrg$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxj:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zze(Lcom/google/android/gms/internal/ads/zzbrg$zza;)Lcom/google/android/gms/internal/ads/zzdni;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxk:Lcom/google/android/gms/internal/ads/zzdni;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbrg$zza;Lcom/google/android/gms/internal/ads/zzbrf;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbrg;-><init>(Lcom/google/android/gms/internal/ads/zzbrg$zza;)V

    return-void
.end method


# virtual methods
.method final zzaks()Lcom/google/android/gms/internal/ads/zzbrg$zza;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrg$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbrg$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzcg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnn;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxj:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxi:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object v0

    return-object v0
.end method

.method final zzakt()Lcom/google/android/gms/internal/ads/zzdnn;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    return-object v0
.end method

.method final zzaku()Lcom/google/android/gms/internal/ads/zzdni;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxk:Lcom/google/android/gms/internal/ads/zzdni;

    return-object v0
.end method

.method final zzakv()Landroid/os/Bundle;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxi:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzakw()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxj:Ljava/lang/String;

    return-object v0
.end method

.method final zzcf(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzfxj:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->context:Landroid/content/Context;

    return-object p1
.end method
