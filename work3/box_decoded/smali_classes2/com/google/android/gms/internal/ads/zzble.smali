.class public final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

.field private final zzext:Lcom/google/android/gms/internal/ads/zzdnj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckq;Lcom/google/android/gms/internal/ads/zzdnj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    return-void
.end method


# virtual methods
.method public final zzb(JI)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzdgx:Lcom/google/android/gms/internal/ads/zzckq;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqg()Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzckp;->zza(Lcom/google/android/gms/internal/ads/zzdmz;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "ad_closed"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "show_time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object p1

    const-string p2, "ad_format"

    const-string v0, "app_open_ad"

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbld;->zzfsm:[I

    add-int/lit8 p3, p3, -0x1

    aget p2, p2, p3

    const-string p3, "u"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p3, "cb"

    goto :goto_0

    :pswitch_1
    const-string p3, "ac"

    goto :goto_0

    :pswitch_2
    const-string p3, "cc"

    goto :goto_0

    :pswitch_3
    const-string p3, "h"

    goto :goto_0

    :pswitch_4
    const-string p3, "bb"

    :goto_0
    :pswitch_5
    const-string p2, "acr"

    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzckp;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckp;->zzaqd()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
