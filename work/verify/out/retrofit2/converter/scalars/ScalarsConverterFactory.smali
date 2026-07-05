.class public final Lretrofit2/converter/scalars/ScalarsConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "ScalarsConverterFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method

.method public static create()Lretrofit2/converter/scalars/ScalarsConverterFactory;
    .registers 1

    new-instance v0, Lretrofit2/converter/scalars/ScalarsConverterFactory;

    invoke-direct {v0}, Lretrofit2/converter/scalars/ScalarsConverterFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const-class p2, Ljava/lang/String;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Byte;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Character;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Double;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Float;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Integer;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Long;

    if-eq p1, p2, :cond_47

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_47

    const-class p2, Ljava/lang/Short;

    if-ne p1, p2, :cond_45

    goto :goto_47

    :cond_45
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_47
    :goto_47
    sget-object p1, Lretrofit2/converter/scalars/ScalarRequestBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarRequestBodyConverter;

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_7

    .line 2
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$StringResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$StringResponseBodyConverter;

    return-object p1

    .line 3
    :cond_7
    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_66

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_10

    goto :goto_66

    .line 4
    :cond_10
    const-class p2, Ljava/lang/Byte;

    if-eq p1, p2, :cond_63

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_19

    goto :goto_63

    .line 5
    :cond_19
    const-class p2, Ljava/lang/Character;

    if-eq p1, p2, :cond_60

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_22

    goto :goto_60

    .line 6
    :cond_22
    const-class p2, Ljava/lang/Double;

    if-eq p1, p2, :cond_5d

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_2b

    goto :goto_5d

    .line 7
    :cond_2b
    const-class p2, Ljava/lang/Float;

    if-eq p1, p2, :cond_5a

    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_34

    goto :goto_5a

    .line 8
    :cond_34
    const-class p2, Ljava/lang/Integer;

    if-eq p1, p2, :cond_57

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_3d

    goto :goto_57

    .line 9
    :cond_3d
    const-class p2, Ljava/lang/Long;

    if-eq p1, p2, :cond_54

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_46

    goto :goto_54

    .line 10
    :cond_46
    const-class p2, Ljava/lang/Short;

    if-eq p1, p2, :cond_51

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_51
    :goto_51
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$ShortResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$ShortResponseBodyConverter;

    return-object p1

    .line 12
    :cond_54
    :goto_54
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;

    return-object p1

    .line 13
    :cond_57
    :goto_57
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$IntegerResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$IntegerResponseBodyConverter;

    return-object p1

    .line 14
    :cond_5a
    :goto_5a
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$FloatResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$FloatResponseBodyConverter;

    return-object p1

    .line 15
    :cond_5d
    :goto_5d
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$DoubleResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$DoubleResponseBodyConverter;

    return-object p1

    .line 16
    :cond_60
    :goto_60
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$CharacterResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$CharacterResponseBodyConverter;

    return-object p1

    .line 17
    :cond_63
    :goto_63
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$ByteResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$ByteResponseBodyConverter;

    return-object p1

    .line 18
    :cond_66
    :goto_66
    sget-object p1, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$BooleanResponseBodyConverter;->INSTANCE:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$BooleanResponseBodyConverter;

    return-object p1
.end method
