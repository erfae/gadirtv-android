.class public final Lcom/google/android/gms/internal/ads/zzza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final zzadl:I

.field private final zzadm:I

.field private final zzadn:Ljava/lang/String;

.field private final zzbnx:Z

.field private final zzcgz:I

.field private final zzchc:Ljava/lang/String;

.field private final zzche:Ljava/lang/String;

.field private final zzchg:Landroid/os/Bundle;

.field private final zzchi:Ljava/lang/String;

.field private final zzchk:Z

.field private final zzchl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzchm:I

.field private final zzcjk:Landroid/os/Bundle;

.field private final zzcjo:Lcom/google/android/gms/ads/query/AdInfo;

.field private final zzcjp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcjq:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzcjr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcjs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmu:Ljava/util/Date;

.field private final zzmw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmy:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyz;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzza;-><init>(Lcom/google/android/gms/internal/ads/zzyz;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyz;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zza(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmu:Ljava/util/Date;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzb(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzche:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzc(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchl:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzd(Lcom/google/android/gms/internal/ads/zzyz;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcgz:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zze(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmw:Ljava/util/Set;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzf(Lcom/google/android/gms/internal/ads/zzyz;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmy:Landroid/location/Location;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzg(Lcom/google/android/gms/internal/ads/zzyz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzbnx:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzh(Lcom/google/android/gms/internal/ads/zzyz;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjk:Landroid/os/Bundle;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzi(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjp:Ljava/util/Map;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzj(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchc:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzk(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchi:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjq:Lcom/google/android/gms/ads/search/SearchAdRequest;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzl(Lcom/google/android/gms/internal/ads/zzyz;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadl:I

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzm(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjr:Ljava/util/Set;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzn(Lcom/google/android/gms/internal/ads/zzyz;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchg:Landroid/os/Bundle;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzo(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjs:Ljava/util/Set;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzp(Lcom/google/android/gms/internal/ads/zzyz;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchk:Z

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzq(Lcom/google/android/gms/internal/ads/zzyz;)Lcom/google/android/gms/ads/query/AdInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjo:Lcom/google/android/gms/ads/query/AdInfo;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzr(Lcom/google/android/gms/internal/ads/zzyz;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadm:I

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzs(Lcom/google/android/gms/internal/ads/zzyz;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadn:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyz;->zzt(Lcom/google/android/gms/internal/ads/zzyz;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchm:I

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmu:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzche:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjk:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchg:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcgz:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmw:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzmy:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzbnx:Z

    return v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadn:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjk:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchc:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchk:Z

    return v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 2

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzd;->zzrb()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzd;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqa()Lcom/google/android/gms/internal/ads/zzayr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayr;->zzbn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjr:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzqr()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchl:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzqs()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzqt()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjq:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzqu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjp:Ljava/util/Map;

    return-object v0
.end method

.method public final zzqv()Landroid/os/Bundle;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjk:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzqw()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadl:I

    return v0
.end method

.method public final zzqx()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjs:Ljava/util/Set;

    return-object v0
.end method

.method public final zzqy()Lcom/google/android/gms/ads/query/AdInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzcjo:Lcom/google/android/gms/ads/query/AdInfo;

    return-object v0
.end method

.method public final zzqz()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzadm:I

    return v0
.end method

.method public final zzra()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzza;->zzchm:I

    return v0
.end method
