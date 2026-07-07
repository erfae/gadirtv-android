.class public final Lcom/google/android/gms/internal/ads/zzdnn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final zzbpe:Lcom/google/android/gms/internal/ads/zzvn;

.field public final zzdnh:Lcom/google/android/gms/internal/ads/zzadz;

.field public final zzdui:Lcom/google/android/gms/internal/ads/zzajl;

.field public final zzgwz:I

.field public final zzgyj:Z

.field public final zzhim:Lcom/google/android/gms/internal/ads/zzxu;

.field public final zzhin:Lcom/google/android/gms/internal/ads/zzaak;

.field public final zzhio:Lcom/google/android/gms/internal/ads/zzvk;

.field public final zzhip:Ljava/lang/String;

.field public final zzhiq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzhis:Lcom/google/android/gms/internal/ads/zzvw;

.field public final zzhit:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final zzhiu:Lcom/google/android/gms/internal/ads/zzxo;

.field public final zzhiv:Lcom/google/android/gms/internal/ads/zzdna;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zza(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzbpe:Lcom/google/android/gms/internal/ads/zzvn;

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzb(Lcom/google/android/gms/internal/ads/zzdnp;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhip:Ljava/lang/String;

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzc(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzxu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhim:Lcom/google/android/gms/internal/ads/zzxu;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvk;

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzvk;->versionCode:I

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzcgy:J

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzvk;->extras:Landroid/os/Bundle;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzcgz:I

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzcha:Ljava/util/List;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchb:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzadl:I

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzbnx:Z

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzn(Lcom/google/android/gms/internal/ads/zzdnp;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v11, 0x1

    .line 15
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchc:Ljava/lang/String;

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchd:Lcom/google/android/gms/internal/ads/zzaag;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzmy:Landroid/location/Location;

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzche:Ljava/lang/String;

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchf:Landroid/os/Bundle;

    move-object/from16 v16, v2

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchg:Landroid/os/Bundle;

    move-object/from16 v17, v2

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchh:Ljava/util/List;

    move-object/from16 v18, v2

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchi:Ljava/lang/String;

    move-object/from16 v19, v2

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchj:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchk:Z

    move/from16 v21, v2

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchn:Lcom/google/android/gms/internal/ads/zzvc;

    move-object/from16 v22, v2

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzadm:I

    move/from16 v23, v2

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzadn:Ljava/lang/String;

    move-object/from16 v24, v2

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchl:Ljava/util/List;

    move-object/from16 v25, v2

    .line 29
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzm(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvk;->zzchm:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzm;->zzdg(I)I

    move-result v26

    move-object v2, v1

    invoke-direct/range {v2 .. v26}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaag;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvc;ILjava/lang/String;Ljava/util/List;I)V

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    .line 32
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzo(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzo(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    goto :goto_2

    .line 34
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzp(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzp(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadz;->zzdep:Lcom/google/android/gms/internal/ads/zzaak;

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 37
    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhin:Lcom/google/android/gms/internal/ads/zzaak;

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzd(Lcom/google/android/gms/internal/ads/zzdnp;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiq:Ljava/util/ArrayList;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zze(Lcom/google/android/gms/internal/ads/zzdnp;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhir:Ljava/util/ArrayList;

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzd(Lcom/google/android/gms/internal/ads/zzdnp;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 43
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzp(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    if-nez v1, :cond_5

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadz;

    new-instance v3, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_3

    .line 45
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzp(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v1

    .line 46
    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzdnh:Lcom/google/android/gms/internal/ads/zzadz;

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzf(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzvw;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhis:Lcom/google/android/gms/internal/ads/zzvw;

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzg(Lcom/google/android/gms/internal/ads/zzdnp;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzgwz:I

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzh(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhit:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzi(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzxo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiu:Lcom/google/android/gms/internal/ads/zzxo;

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzj(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzajl;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzdui:Lcom/google/android/gms/internal/ads/zzajl;

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzk(Lcom/google/android/gms/internal/ads/zzdnp;)Lcom/google/android/gms/internal/ads/zzdnc;

    move-result-object v1

    .line 53
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdna;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdna;-><init>(Lcom/google/android/gms/internal/ads/zzdnc;Lcom/google/android/gms/internal/ads/zzdnd;)V

    .line 54
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhiv:Lcom/google/android/gms/internal/ads/zzdna;

    .line 55
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdnp;->zzl(Lcom/google/android/gms/internal/ads/zzdnp;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzgyj:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzdnm;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnn;-><init>(Lcom/google/android/gms/internal/ads/zzdnp;)V

    return-void
.end method


# virtual methods
.method public final zzaun()Lcom/google/android/gms/internal/ads/zzagd;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhit:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzjv()Lcom/google/android/gms/internal/ads/zzagd;

    move-result-object v0

    return-object v0
.end method
