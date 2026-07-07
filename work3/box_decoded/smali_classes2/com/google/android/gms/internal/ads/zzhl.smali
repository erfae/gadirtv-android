.class final Lcom/google/android/gms/internal/ads/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public final index:I

.field private final zzaeo:[Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzaep:Lcom/google/android/gms/internal/ads/zzoh;

.field public final zzafl:Lcom/google/android/gms/internal/ads/zzmy;

.field public final zzafm:Ljava/lang/Object;

.field public final zzafn:[Lcom/google/android/gms/internal/ads/zznn;

.field private final zzafo:[Z

.field public final zzafp:J

.field public zzafq:I

.field public zzafr:J

.field public zzafs:Z

.field public zzaft:Z

.field public zzafu:Z

.field public zzafv:Lcom/google/android/gms/internal/ads/zzhl;

.field public zzafw:Lcom/google/android/gms/internal/ads/zzoj;

.field private final zzafx:[Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzafy:Lcom/google/android/gms/internal/ads/zzht;

.field private final zzafz:Lcom/google/android/gms/internal/ads/zzna;

.field private zzaga:Lcom/google/android/gms/internal/ads/zzoj;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhy;[Lcom/google/android/gms/internal/ads/zzhx;JLcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzna;Ljava/lang/Object;IIZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaeo:[Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafx:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafp:J

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:Lcom/google/android/gms/internal/ads/zzoh;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafy:Lcom/google/android/gms/internal/ads/zzht;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzna;

    .line 8
    invoke-static {p8}, Lcom/google/android/gms/internal/ads/zzpc;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafm:Ljava/lang/Object;

    .line 9
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzhl;->index:I

    .line 10
    iput p10, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafq:I

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafs:Z

    .line 12
    iput-wide p12, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafr:J

    .line 13
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zznn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafn:[Lcom/google/android/gms/internal/ads/zznn;

    .line 14
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafo:[Z

    .line 15
    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/zzht;->zzfd()Lcom/google/android/gms/internal/ads/zzol;

    move-result-object p1

    invoke-interface {p7, p10, p1}, Lcom/google/android/gms/internal/ads/zzna;->zza(ILcom/google/android/gms/internal/ads/zzol;)Lcom/google/android/gms/internal/ads/zzmy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafl:Lcom/google/android/gms/internal/ads/zzmy;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafz:Lcom/google/android/gms/internal/ads/zzna;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafl:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzmy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Period release failed."

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(JZ[Z)J
    .locals 13

    move-object v0, p0

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafw:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhv:Lcom/google/android/gms/internal/ads/zzoe;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 41
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzoe;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 42
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafo:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafw:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzoj;

    .line 43
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzoj;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafl:Lcom/google/android/gms/internal/ads/zzmy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoe;->zzim()[Lcom/google/android/gms/internal/ads/zzoc;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafo:[Z

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafn:[Lcom/google/android/gms/internal/ads/zznn;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzmy;->zza([Lcom/google/android/gms/internal/ads/zzoc;[Z[Lcom/google/android/gms/internal/ads/zznn;[ZJ)J

    move-result-wide v3

    .line 46
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafw:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzoj;

    .line 47
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafu:Z

    const/4 v6, 0x0

    .line 48
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafn:[Lcom/google/android/gms/internal/ads/zznn;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 49
    aget-object v7, v7, v6

    if-eqz v7, :cond_3

    .line 50
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzoe;->zzbe(I)Lcom/google/android/gms/internal/ads/zzoc;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpc;->checkState(Z)V

    .line 51
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafu:Z

    goto :goto_5

    .line 52
    :cond_3
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzoe;->zzbe(I)Lcom/google/android/gms/internal/ads/zzoc;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzpc;->checkState(Z)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 54
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafy:Lcom/google/android/gms/internal/ads/zzht;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzaeo:[Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhl;->zzafw:Lcom/google/android/gms/internal/ads/zzoj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoj;->zzbhu:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v2, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzht;->zza([Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzoe;)V

    return-wide v3
.end method

.method public final zzb(JZ)J
    .locals 1

    .line 39
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaeo:[Lcom/google/android/gms/internal/ads/zzhy;

    array-length p3, p3

    new-array p3, p3, [Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc(IZ)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafq:I

    .line 19
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafs:Z

    return-void
.end method

.method public final zzep()J
    .locals 4

    .line 17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafr:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzeq()Z
    .locals 5

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaft:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafl:Lcom/google/android/gms/internal/ads/zzmy;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmy;->zzhr()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaep:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafx:[Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafl:Lcom/google/android/gms/internal/ads/zzmy;

    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmy;->zzho()Lcom/google/android/gms/internal/ads/zznq;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoh;->zza([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zznq;)Lcom/google/android/gms/internal/ads/zzoj;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzaga:Lcom/google/android/gms/internal/ads/zzoj;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    .line 30
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhv:Lcom/google/android/gms/internal/ads/zzoe;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzoe;->length:I

    if-ge v4, v5, :cond_2

    .line 31
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzoj;->zza(Lcom/google/android/gms/internal/ads/zzoj;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    return v3

    .line 37
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzafw:Lcom/google/android/gms/internal/ads/zzoj;

    return v2
.end method
