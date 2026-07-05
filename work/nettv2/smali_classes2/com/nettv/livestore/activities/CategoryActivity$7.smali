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
    .locals 3

    invoke-static {}, Lcom/nettv/livestore/apps/HomeType;->values()[Lcom/nettv/livestore/apps/HomeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    :try_start_0
    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->movies:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->series:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
