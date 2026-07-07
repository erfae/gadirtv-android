.class public final Lcom/google/android/gms/internal/ads/zzvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzadl:I

.field private zzadm:I

.field private zzadn:Ljava/lang/String;

.field private zzbnx:Z

.field private zzcgy:J

.field private zzcgz:I

.field private zzcha:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchb:Z

.field private zzchc:Ljava/lang/String;

.field private zzchd:Lcom/google/android/gms/internal/ads/zzaag;

.field private zzche:Ljava/lang/String;

.field private zzchf:Landroid/os/Bundle;

.field private zzchg:Landroid/os/Bundle;

.field private zzchh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchi:Ljava/lang/String;

.field private zzchj:Ljava/lang/String;

.field private zzchk:Z

.field private zzchl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchm:I

.field private zzmy:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzcgy:J

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzcgz:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzcha:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchb:Z

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzadl:I

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzbnx:Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchc:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchd:Lcom/google/android/gms/internal/ads/zzaag;

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzmy:Landroid/location/Location;

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzche:Ljava/lang/String;

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchf:Landroid/os/Bundle;

    .line 14
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchg:Landroid/os/Bundle;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchh:Ljava/util/List;

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchi:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchj:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchk:Z

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzadm:I

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzadn:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchl:Ljava/util/List;

    const v0, 0xea60

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzchm:I

    return-void
.end method


# virtual methods
.method public final zzpn()Lcom/google/android/gms/internal/ads/zzvk;
    .locals 27

    move-object/from16 v0, p0

    .line 24
    new-instance v26, Lcom/google/android/gms/internal/ads/zzvk;

    move-object/from16 v1, v26

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzcgy:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvj;->extras:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzcgz:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzcha:Ljava/util/List;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzadl:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchf:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchg:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchh:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzadm:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchl:Ljava/util/List;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvj;->zzchm:I

    move/from16 v25, v2

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaag;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvc;ILjava/lang/String;Ljava/util/List;I)V

    return-object v26
.end method
