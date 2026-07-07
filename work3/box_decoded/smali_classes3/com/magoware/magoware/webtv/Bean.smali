.class public Lcom/magoware/magoware/webtv/Bean;
.super Ljava/lang/Object;
.source "Bean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/Bean$Beans;
    }
.end annotation


# static fields
.field private static instance:Lcom/magoware/magoware/webtv/Bean;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private beans:[Lcom/magoware/magoware/webtv/Bean$Beans;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "keys"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bean"

    .line 12
    iput-object v0, p0, Lcom/magoware/magoware/webtv/Bean;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/Bean;->map:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/magoware/magoware/webtv/Bean$Beans;

    .line 61
    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$LJtaZedW3Qsnh1THIJCHJbkW10Y;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$LJtaZedW3Qsnh1THIJCHJbkW10Y;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$IN4OyTo8XgaugY4Zl8KetSoriVQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$IN4OyTo8XgaugY4Zl8KetSoriVQ;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$opIJbGFEbKzL40Bc9FOCM4xo9_I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$opIJbGFEbKzL40Bc9FOCM4xo9_I;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$hbL_Pihefyrq6BnH2vQ7wcKiRek;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$hbL_Pihefyrq6BnH2vQ7wcKiRek;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$MZ5s31cKMQjNJ56Nvb3zG7_zxVc;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$MZ5s31cKMQjNJ56Nvb3zG7_zxVc;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$NSp5f8df_Rzz9FcoPeg0D5KAHiU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$NSp5f8df_Rzz9FcoPeg0D5KAHiU;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$pflyqTqugWTTu-af4GzU5vDCzeQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$pflyqTqugWTTu-af4GzU5vDCzeQ;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/magoware/magoware/webtv/-$$Lambda$OHxqNTuCUEbpkPbMlUlYVKGBYK0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/-$$Lambda$OHxqNTuCUEbpkPbMlUlYVKGBYK0;-><init>(Lcom/magoware/magoware/webtv/Bean;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/magoware/magoware/webtv/Bean;->beans:[Lcom/magoware/magoware/webtv/Bean$Beans;

    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/Bean;
    .locals 1

    .line 21
    sget-object v0, Lcom/magoware/magoware/webtv/Bean;->instance:Lcom/magoware/magoware/webtv/Bean;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/magoware/magoware/webtv/Bean;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/Bean;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/Bean;->instance:Lcom/magoware/magoware/webtv/Bean;

    .line 24
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/Bean;->instance:Lcom/magoware/magoware/webtv/Bean;

    return-object v0
.end method

.method private pk()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/magoware/magoware/webtv/Bean;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    const-class v3, Lcom/magoware/magoware/webtv/Bean;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/magoware/magoware/webtv/global/Global;->bean:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native a()I
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/Bean;->beans:[Lcom/magoware/magoware/webtv/Bean$Beans;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/Bean$Beans;->getBean()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native k()Ljava/lang/String;
.end method

.method kot()Ljava/lang/String;
    .locals 10

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->k()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-class v1, Lcom/magoware/magoware/webtv/Bean;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 79
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->q()I

    move-result v7

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->q()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/magoware/magoware/webtv/Bean;->l(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 83
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->a()I

    move-result v8

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->a()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/magoware/magoware/webtv/Bean;->l(I)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 84
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/Bean;->z()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 85
    invoke-virtual {p0, v7, v8, v6}, Lcom/magoware/magoware/webtv/Bean;->pr(III)I

    move-result v6

    .line 86
    iget-object v7, p0, Lcom/magoware/magoware/webtv/Bean;->map:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/Bean;->pk()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 93
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public native l(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public native pr(III)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation
.end method

.method public native q()I
.end method

.method public native res174()Ljava/lang/String;
.end method

.method public native res256()Ljava/lang/String;
.end method

.method public native res341()Ljava/lang/String;
.end method

.method public native res362()Ljava/lang/String;
.end method

.method public native res682()Ljava/lang/String;
.end method

.method public native res735()Ljava/lang/String;
.end method

.method public native res842()Ljava/lang/String;
.end method

.method public native res922()Ljava/lang/String;
.end method

.method public native z()I
.end method
