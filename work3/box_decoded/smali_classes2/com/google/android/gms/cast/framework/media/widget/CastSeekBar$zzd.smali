.class public final Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# instance fields
.field public zzxi:I

.field public zzxj:I

.field public zzxk:I

.field public zzxl:I

.field public zzxm:I

.field public zzxn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 4
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 6
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;

    .line 7
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    iget v3, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxi:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxj:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxk:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxl:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxm:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar$zzd;->zzxn:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
