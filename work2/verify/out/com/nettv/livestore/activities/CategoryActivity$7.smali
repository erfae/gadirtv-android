.class synthetic Lcom/nettv/livestore/activities/CategoryActivity$7;
.super Ljava/lang/Object;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$vilhao$player$apps$HomeType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nettv/livestore/apps/HomeType;->values()[Lcom/nettv/livestore/apps/HomeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    :try_start_9
    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->movies:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->series:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
