.class public final Lcom/google/android/gms/internal/ads/zzacs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field private static zzdbj:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbk:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbl:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbm:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdbn:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:consent:gmscore:dsid:enabled"

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdbj:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:consent:gmscore:lat:enabled"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdbk:Lcom/google/android/gms/internal/ads/zzacn;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaco;

    sget v2, Lcom/google/android/gms/internal/ads/zzacp;->zzdbb:I

    const-string v3, "gads:consent:gmscore:backend_url"

    const-string v4, "https://adservice.google.com/getconfig/pubvendors"

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaco;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdbl:Lcom/google/android/gms/internal/ads/zzacn;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaco;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzacp;->zzdaz:I

    const-string v4, "gads:consent:gmscore:time_out"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaco;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdbm:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:consent:gmscore:enabled"

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacs;->zzdbn:Lcom/google/android/gms/internal/ads/zzacn;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/ads/zzadr;)V
    .locals 0

    return-void
.end method
