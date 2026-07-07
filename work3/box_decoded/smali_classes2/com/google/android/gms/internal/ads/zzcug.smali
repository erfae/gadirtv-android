.class public final Lcom/google/android/gms/internal/ads/zzcug;
.super Lcom/google/android/gms/internal/ads/zzcud;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcud<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

.field private final zzexr:Lcom/google/android/gms/internal/ads/zzcap;

.field private final zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

.field private final zzfsx:Landroid/view/ViewGroup;

.field private final zzful:Lcom/google/android/gms/internal/ads/zzbua;

.field private final zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

.field private final zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgm;Lcom/google/android/gms/internal/ads/zzbrg$zza;Lcom/google/android/gms/internal/ads/zzcwq;Lcom/google/android/gms/internal/ads/zzbwp;Lcom/google/android/gms/internal/ads/zzcap;Lcom/google/android/gms/internal/ads/zzbua;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcud;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzexr:Lcom/google/android/gms/internal/ads/zzcap;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzful:Lcom/google/android/gms/internal/ads/zzbua;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzfsx:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdnn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnn;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzbme;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgss:Lcom/google/android/gms/internal/ads/zzbgm;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaer()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzgst:Lcom/google/android/gms/internal/ads/zzbrg$zza;

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zza(Lcom/google/android/gms/internal/ads/zzdnn;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbrg$zza;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzakx()Lcom/google/android/gms/internal/ads/zzbrg;

    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    .line 16
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

    .line 17
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zza(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzexr:Lcom/google/android/gms/internal/ads/zzcap;

    .line 18
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zzb(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbnv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzful:Lcom/google/android/gms/internal/ads/zzbua;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbnv;-><init>(Lcom/google/android/gms/internal/ads/zzbua;)V

    .line 19
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zza(Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzblz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzfsx:Landroid/view/ViewGroup;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzblz;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzblz;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzagz()Lcom/google/android/gms/internal/ads/zzbna;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbna;->zzagh()Lcom/google/android/gms/internal/ads/zzboz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboz;->zzakj()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
