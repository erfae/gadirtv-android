.class public Lcom/google/android/gms/cast/AdBreakStatus$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/AdBreakStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzm:J

.field private zzu:J

.field private zzv:J

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 10

    .line 12
    new-instance v9, Lcom/google/android/gms/cast/AdBreakStatus;

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzu:J

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzv:J

    iget-object v5, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzw:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzx:Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzm:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V

    return-object v9
.end method

.method public setBreakClipId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakStatus$Builder;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzx:Ljava/lang/String;

    return-object p0
.end method

.method public setBreakId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakStatus$Builder;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzw:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentBreakClipTimeInMs(J)Lcom/google/android/gms/cast/AdBreakStatus$Builder;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzv:J

    return-object p0
.end method

.method public setCurrentBreakTimeInMs(J)Lcom/google/android/gms/cast/AdBreakStatus$Builder;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzu:J

    return-object p0
.end method

.method public setWhenSkippableInMs(J)Lcom/google/android/gms/cast/AdBreakStatus$Builder;
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakStatus$Builder;->zzm:J

    return-object p0
.end method
